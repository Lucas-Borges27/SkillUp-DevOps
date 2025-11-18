# -----------------------------
# 🏗️ Etapa 1 — Build da aplicação (DevOps)
# -----------------------------
FROM eclipse-temurin:17-jdk-jammy AS build

WORKDIR /app

# Instala dependências para build
RUN apt-get update && apt-get install -y \
    git \
    dos2unix \
    unzip \
    bash \
    && apt-get clean

# Clona o repositório do projeto SkillUp-JAVA
RUN git clone https://github.com/Lucas-Borges27/skillup-JAVA.git .

# Dá permissão ao Maven Wrapper
RUN dos2unix mvnw && chmod +x mvnw

# Compila a aplicação
RUN ./mvnw clean package -DskipTests

# -----------------------------
# 🚀 Etapa 2 — Runtime leve e seguro
# -----------------------------
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

# Copia o jar compilado
COPY --from=build /app/target/*.jar app.jar

# Cria usuário não-root (boa prática)
RUN useradd -ms /bin/bash appuser
USER appuser

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
