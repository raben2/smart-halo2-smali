.class final Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;
.super Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;
.source "AutoValue_InstallationIdResult.java"


# instance fields
.field private final installationId:Ljava/lang/String;

.field private final installationTokenResult:Lcom/google/firebase/installations/InstallationTokenResult;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/firebase/installations/InstallationTokenResult;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;-><init>()V

    if-eqz p1, :cond_1

    .line 21
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;->installationId:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 25
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;->installationTokenResult:Lcom/google/firebase/installations/InstallationTokenResult;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null installationTokenResult"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null installationId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 52
    check-cast p1, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;

    .line 53
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;->installationId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;->installationTokenResult:Lcom/google/firebase/installations/InstallationTokenResult;

    .line 54
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationTokenResult()Lcom/google/firebase/installations/InstallationTokenResult;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;->installationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 65
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;->installationTokenResult:Lcom/google/firebase/installations/InstallationTokenResult;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method installationId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method installationTokenResult()Lcom/google/firebase/installations/InstallationTokenResult;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;->installationTokenResult:Lcom/google/firebase/installations/InstallationTokenResult;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallationIdResult{installationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;->installationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", installationTokenResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;->installationTokenResult:Lcom/google/firebase/installations/InstallationTokenResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
