.class public interface abstract Lcom/instabug/library/networkv2/INetworkManager;
.super Ljava/lang/Object;
.source "INetworkManager.java"


# virtual methods
.method public abstract doRequest(ILcom/instabug/library/networkv2/request/Request;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V
    .param p2    # Lcom/instabug/library/networkv2/request/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/instabug/library/networkv2/request/Request;",
            "Lcom/instabug/library/networkv2/request/Request$Callbacks<",
            "Lcom/instabug/library/network/RequestResponse;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
