.class Lcom/instabug/chat/network/c/a$g;
.super Ljava/lang/Object;
.source "MessagingService.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/network/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/instabug/library/network/Request;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/instabug/library/network/RequestResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/network/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/network/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/network/c/a$g;->a:Lcom/instabug/chat/network/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/network/Request;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/network/Request;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/instabug/library/network/RequestResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/network/c/a$g;->a:Lcom/instabug/chat/network/c/a;

    invoke-static {v0}, Lcom/instabug/chat/network/c/a;->a(Lcom/instabug/chat/network/c/a;)Lcom/instabug/library/network/NetworkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/network/Request;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/network/c/a$g;->a(Lcom/instabug/library/network/Request;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
