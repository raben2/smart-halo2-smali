.class Lcom/instabug/chat/network/a$a;
.super Ljava/lang/Object;
.source "MessageUploaderHelper.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/network/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/e/b;

.field final synthetic b:Lcom/instabug/chat/network/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/network/a$a;->b:Lcom/instabug/chat/network/a;

    iput-object p2, p0, Lcom/instabug/chat/network/a$a;->a:Lcom/instabug/chat/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/network/a$a;->b:Lcom/instabug/chat/network/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggering chat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/chat/network/a$a;->a:Lcom/instabug/chat/e/b;

    .line 3
    invoke-virtual {v2}, Lcom/instabug/chat/e/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " triggeredChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/chat/network/a$a;->a:Lcom/instabug/chat/e/b;

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;->getInstance()Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;

    move-result-object v1

    new-instance v2, Lcom/instabug/chat/eventbus/a;

    invoke-direct {v2, v0, p1}, Lcom/instabug/chat/eventbus/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lcom/instabug/chat/network/a$a;->b:Lcom/instabug/chat/network/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating local chat with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", with synced chat with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/instabug/chat/network/a$a;->a:Lcom/instabug/chat/e/b;

    invoke-virtual {v1, p1}, Lcom/instabug/chat/e/b;->setId(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    .line 20
    iget-object p1, p0, Lcom/instabug/chat/network/a$a;->a:Lcom/instabug/chat/e/b;

    sget-object v1, Lcom/instabug/chat/e/b$a;->LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/chat/e/b$a;

    invoke-virtual {p1, v1}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    .line 22
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1, v0}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->delete(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/instabug/chat/network/a$a;->a:Lcom/instabug/chat/e/b;

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/network/a$a;->a:Lcom/instabug/chat/e/b;

    invoke-virtual {p1, v0, v1}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->saveCacheToDisk()V

    .line 28
    iget-object p1, p0, Lcom/instabug/chat/network/a$a;->b:Lcom/instabug/chat/network/a;

    iget-object v0, p0, Lcom/instabug/chat/network/a$a;->a:Lcom/instabug/chat/e/b;

    invoke-static {p1, v0}, Lcom/instabug/chat/network/a;->a(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/b;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/instabug/chat/network/a$a;->b:Lcom/instabug/chat/network/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something went wrong while triggering offline chat with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/chat/network/a$a;->a:Lcom/instabug/chat/e/b;

    .line 32
    invoke-virtual {v2}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/network/a$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/network/a$a;->a(Ljava/lang/String;)V

    return-void
.end method
