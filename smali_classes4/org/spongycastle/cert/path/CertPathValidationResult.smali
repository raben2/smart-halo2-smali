.class public Lorg/spongycastle/cert/path/CertPathValidationResult;
.super Ljava/lang/Object;
.source "CertPathValidationResult.java"


# instance fields
.field private final cause:Lorg/spongycastle/cert/path/CertPathValidationException;

.field private certIndexes:[I

.field private final isValid:Z

.field private final unhandledCriticalExtensionOIDs:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/path/CertPathValidationContext;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Lorg/spongycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    .line 17
    iget-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->isValid:Z

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->cause:Lorg/spongycastle/cert/path/CertPathValidationException;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/cert/path/CertPathValidationContext;IILorg/spongycastle/cert/path/CertPathValidationException;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lorg/spongycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->isValid:Z

    .line 25
    iput-object p4, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->cause:Lorg/spongycastle/cert/path/CertPathValidationException;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/cert/path/CertPathValidationContext;[I[I[Lorg/spongycastle/cert/path/CertPathValidationException;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/spongycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->isValid:Z

    .line 33
    aget-object p1, p4, p1

    iput-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->cause:Lorg/spongycastle/cert/path/CertPathValidationException;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Exception;
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->cause:Lorg/spongycastle/cert/path/CertPathValidationException;

    if-eqz v0, :cond_0

    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lorg/spongycastle/cert/path/CertPathValidationException;

    const-string v1, "Unhandled Critical Extensions"

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnhandledCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    return-object v0
.end method

.method public isDetailed()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->isValid:Z

    return v0
.end method
