.class public final Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;
.super Ljava/lang/Object;
.source "FiamImageLoader_Factory.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final picassoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
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
            "Lcom/squareup/picasso/Picasso;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;->picassoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/squareup/picasso/Picasso;)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;
    .locals 1

    .line 29
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;-><init>(Lcom/squareup/picasso/Picasso;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;->picassoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;->newInstance(Lcom/squareup/picasso/Picasso;)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;->get()Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    move-result-object v0

    return-object v0
.end method
