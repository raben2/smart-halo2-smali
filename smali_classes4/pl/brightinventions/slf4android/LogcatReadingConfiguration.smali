.class Lpl/brightinventions/slf4android/LogcatReadingConfiguration;
.super Ljava/lang/Object;
.source "LogcatReadingConfiguration.java"


# instance fields
.field private shouldClear:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLogcat(Z)Lpl/brightinventions/slf4android/LogcatReadingConfiguration;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lpl/brightinventions/slf4android/LogcatReadingConfiguration;->shouldClear:Z

    return-object p0
.end method

.method public shouldClear()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lpl/brightinventions/slf4android/LogcatReadingConfiguration;->shouldClear:Z

    return v0
.end method
