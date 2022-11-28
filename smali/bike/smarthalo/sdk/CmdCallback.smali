.class public abstract Lbike/smarthalo/sdk/CmdCallback;
.super Ljava/lang/Object;
.source "CmdCallback.java"


# static fields
.field public static final ERROR:Ljava/lang/String; = "Error"

.field public static final REASON_TIMEOUT:Ljava/lang/String; = "Timeout"

.field public static final REASON_WRITEFAILED:Ljava/lang/String; = "Write Failed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 0

    return-void
.end method

.method public onDone([B)V
    .locals 0

    return-void
.end method

.method public onErr(B)V
    .locals 0

    return-void
.end method

.method public onFail()V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResult(I)V
    .locals 0

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
