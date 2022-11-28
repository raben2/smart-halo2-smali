.class public final Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient_Factory;
.super Ljava/lang/Object;
.source "ImpressionStorageClient_Factory.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final storageClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;",
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
            "Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient_Factory;->storageClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;)Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;
    .locals 1

    .line 33
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;-><init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient_Factory;->storageClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient_Factory;->newInstance(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;)Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient_Factory;->get()Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    move-result-object v0

    return-object v0
.end method
