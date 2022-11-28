.class public final Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper_Factory;
.super Ljava/lang/Object;
.source "TestDeviceHelper_Factory.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final sharedPreferencesUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper_Factory;->sharedPreferencesUtilsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;)Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;
    .locals 1

    .line 33
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;-><init>(Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper_Factory;->sharedPreferencesUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper_Factory;->newInstance(Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;)Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper_Factory;->get()Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    move-result-object v0

    return-object v0
.end method
