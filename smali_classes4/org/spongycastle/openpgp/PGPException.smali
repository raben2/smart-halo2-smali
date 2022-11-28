.class public Lorg/spongycastle/openpgp/PGPException;
.super Ljava/lang/Exception;
.source "PGPException.java"


# instance fields
.field underlying:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPException;->underlying:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPException;->underlying:Ljava/lang/Exception;

    return-object v0
.end method

.method public getUnderlyingException()Ljava/lang/Exception;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPException;->underlying:Ljava/lang/Exception;

    return-object v0
.end method
