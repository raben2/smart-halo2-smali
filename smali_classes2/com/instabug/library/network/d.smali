.class public Lcom/instabug/library/network/d;
.super Ljava/lang/Exception;
.source "ServerConnectionException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Server connection error"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
