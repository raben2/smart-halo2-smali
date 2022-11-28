.class public Lorg/spongycastle/cert/CertRuntimeException;
.super Ljava/lang/RuntimeException;
.source "CertRuntimeException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p2, p0, Lorg/spongycastle/cert/CertRuntimeException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/spongycastle/cert/CertRuntimeException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
