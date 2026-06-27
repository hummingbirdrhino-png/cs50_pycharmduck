plugins {
    id("java")
    id("org.jetbrains.kotlin.jvm") version "2.0.21"
    id("org.jetbrains.intellij.platform") version "2.3.0"
}

group = "com.cs50"
version = "1.0.0"

repositories {
    mavenCentral()
    intellijPlatform {
        defaultRepositories()
    }
}

dependencies {
    implementation("com.squareup.okhttp3:okhttp:4.12.0")
    implementation("com.google.code.gson:gson:2.10.1")
    implementation("org.commonmark:commonmark:0.22.0")
    intellijPlatform {
        intellijIdeaCommunity("2023.3.4")
        bundledPlugin("com.intellij.java")
    }
}

kotlin {
    jvmToolchain(21)
}

tasks {
    withType<JavaCompile> {
        sourceCompatibility = "21"
        targetCompatibility = "21"
    }
    patchPluginXml {
        sinceBuild.set("233")
        untilBuild.set("")
    }
    buildSearchableOptions {
        enabled = false
    }
}
