.class Lcom/instabug/chat/network/a$c;
.super Ljava/lang/Object;
.source "MessageUploaderHelper.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/network/a;->a(Lcom/instabug/chat/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Ljava/lang/Boolean;",
        "Lcom/instabug/chat/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/e/d;

.field final synthetic b:Lcom/instabug/chat/network/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/network/a$c;->b:Lcom/instabug/chat/network/a;

    iput-object p2, p0, Lcom/instabug/chat/network/a$c;->a:Lcom/instabug/chat/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/chat/e/d;)V
    .locals 2

    .line 34
    iget-object p1, p0, Lcom/instabug/chat/network/a$c;->b:Lcom/instabug/chat/network/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Something went wrong while uploading message attachments, Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/network/a$c;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/instabug/chat/network/a$c;->b:Lcom/instabug/chat/network/a;

    const-string v0, "Message attachments uploaded successfully"

    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/chat/network/a$c;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/chat/cache/ChatsCacheManager;->getChat(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/network/a$c;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/instabug/chat/network/a$c;->a:Lcom/instabug/chat/e/d;

    sget-object v1, Lcom/instabug/chat/e/d$c;->READY_TO_BE_SYNCED:Lcom/instabug/chat/e/d$c;

    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$c;)Lcom/instabug/chat/e/d;

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/instabug/chat/network/a$c;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/instabug/chat/network/a$c;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/a;

    const-string v2, "synced"

    .line 11
    invoke-virtual {v1, v2}, Lcom/instabug/chat/e/a;->d(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/instabug/chat/network/a$c;->b:Lcom/instabug/chat/network/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching sent message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/chat/network/a$c;->a:Lcom/instabug/chat/e/d;

    .line 14
    invoke-virtual {v2}, Lcom/instabug/chat/e/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/network/a$c;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_1
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->saveCacheToDisk()V

    .line 23
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Lcom/instabug/chat/settings/a;->a(J)V

    .line 27
    invoke-static {}, Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;->getInstance()Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;

    move-result-object p1

    .line 28
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInMiliSeconds()J

    move-result-wide v0

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p1, "Chat is null so can\'t remove message from it"

    .line 33
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/chat/e/d;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/network/a$c;->a(Lcom/instabug/chat/e/d;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/network/a$c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
