.class Lcom/instabug/chat/network/c/a$i;
.super Ljava/lang/Object;
.source "MessagingService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lcom/instabug/library/network/Request;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instabug/chat/network/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/network/c/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/network/c/a$i;->b:Lcom/instabug/chat/network/c/a;

    iput-object p2, p0, Lcom/instabug/chat/network/c/a$i;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/instabug/library/network/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/network/c/a$i;->b:Lcom/instabug/chat/network/c/a;

    invoke-static {v0}, Lcom/instabug/chat/network/c/a;->a(Lcom/instabug/chat/network/c/a;)Lcom/instabug/library/network/NetworkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/network/c/a$i;->a:Landroid/content/Context;

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->PUSH_TOKEN:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v3, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, v1, v2, v3}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/chat/network/c/a$i;->call()Lcom/instabug/library/network/Request;

    move-result-object v0

    return-object v0
.end method
