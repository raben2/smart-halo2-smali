.class public final Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;
.super Ljava/lang/Object;
.source "PicassoModule_ProvidesFiamControllerFactory.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory<",
        "Lcom/squareup/picasso/Picasso;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;

.field private final picassoErrorListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;->module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;

    .line 26
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;->applicationProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;->picassoErrorListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesFiamController(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;Landroid/app/Application;Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;)Lcom/squareup/picasso/Picasso;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;->providesFiamController(Landroid/app/Application;Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;)Lcom/squareup/picasso/Picasso;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/picasso/Picasso;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/squareup/picasso/Picasso;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;->module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;->applicationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;->picassoErrorListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;->providesFiamController(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule;Landroid/app/Application;Lcom/google/firebase/inappmessaging/display/internal/PicassoErrorListener;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/PicassoModule_ProvidesFiamControllerFactory;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    return-object v0
.end method
