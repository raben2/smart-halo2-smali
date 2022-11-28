.class public final Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener_Factory;
.super Ljava/lang/Object;
.source "PicassoErrorListener_Factory.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener_Factory;
    .locals 1

    .line 17
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener_Factory$InstanceHolder;->access$000()Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;
    .locals 1

    .line 21
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;
    .locals 1

    .line 13
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener_Factory;->newInstance()Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener_Factory;->get()Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;

    move-result-object v0

    return-object v0
.end method
