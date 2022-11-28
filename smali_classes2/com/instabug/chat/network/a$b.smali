.class Lcom/instabug/chat/network/a$b;
.super Ljava/lang/Object;
.source "MessageUploaderHelper.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/network/a;->a(Ljava/util/List;)V
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
.field final synthetic a:Lcom/instabug/chat/e/d;

.field final synthetic b:Lcom/instabug/chat/network/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/network/a$b;->b:Lcom/instabug/chat/network/a;

    iput-object p2, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/network/a$b;->b:Lcom/instabug/chat/network/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send message response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/chat/cache/ChatsCacheManager;->getChat(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {v1, p1}, Lcom/instabug/chat/e/d;->c(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    .line 9
    iget-object p1, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    sget-object v1, Lcom/instabug/chat/e/d$c;->READY_TO_BE_SYNCED:Lcom/instabug/chat/e/d$c;

    invoke-virtual {p1, v1}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$c;)Lcom/instabug/chat/e/d;

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    sget-object v1, Lcom/instabug/chat/e/d$c;->SENT:Lcom/instabug/chat/e/d$c;

    invoke-virtual {p1, v1}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$c;)Lcom/instabug/chat/e/d;

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/instabug/chat/network/a$b;->b:Lcom/instabug/chat/network/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching sent message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    .line 16
    invoke-virtual {v2}, Lcom/instabug/chat/e/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_1
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->saveCacheToDisk()V

    .line 25
    iget-object p1, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 26
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 28
    invoke-static {v0, v1}, Lcom/instabug/chat/settings/a;->a(J)V

    .line 30
    invoke-static {}, Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;->getInstance()Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;

    move-result-object p1

    .line 31
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInMiliSeconds()J

    move-result-wide v0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/instabug/chat/network/a$b;->b:Lcom/instabug/chat/network/a;

    iget-object v0, p0, Lcom/instabug/chat/network/a$b;->a:Lcom/instabug/chat/e/d;

    invoke-static {p1, v0}, Lcom/instabug/chat/network/a;->a(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 38
    :goto_1
    iget-object v0, p0, Lcom/instabug/chat/network/a$b;->b:Lcom/instabug/chat/network/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something went wrong while uploading messageattach attachments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "Chat is null so can\'t remove message from it"

    .line 49
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/instabug/chat/network/a$b;->b:Lcom/instabug/chat/network/a;

    const-string v1, "Something went wrong while uploading cached message"

    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/network/a$b;->a(Ljava/lang/Throwable;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/chat/network/a$b;->a(Ljava/lang/String;)V

    return-void
.end method
