.class public Lcom/instabug/chat/g/a;
.super Ljava/lang/Object;
.source "ExternalScreenRecordHelper.java"

# interfaces
.implements Lcom/instabug/library/internal/video/ScreenRecordingContract;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation


# static fields
.field private static e:Lcom/instabug/chat/g/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/instabug/chat/g/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/instabug/chat/g/a;->a(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/instabug/chat/g/a;->b(Landroid/net/Uri;)V

    .line 34
    :cond_0
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/instabug/chat/g/a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/instabug/chat/ui/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/instabug/chat/e/d;Landroid/net/Uri;)V
    .locals 3

    .line 74
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/e/a;

    .line 76
    invoke-virtual {v0}, Lcom/instabug/chat/e/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/instabug/chat/e/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Setting attachment type to Video"

    .line 78
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/chat/e/a;->c(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    .line 80
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/chat/e/a;->b(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    const/4 p1, 0x1

    .line 81
    invoke-virtual {v0, p1}, Lcom/instabug/chat/e/a;->a(Z)Lcom/instabug/chat/e/a;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/g/a;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/g/a;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/g/a;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/chat/g/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    .line 38
    new-instance v0, Lcom/instabug/chat/e/d;

    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instabug/chat/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/instabug/chat/e/d;->b(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object v0

    const-string v1, ""

    .line 39
    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/d;->a(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/chat/e/d;->a(J)Lcom/instabug/chat/e/d;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/chat/e/d;->b(J)Lcom/instabug/chat/e/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/chat/e/d$b;->INBOUND:Lcom/instabug/chat/e/d$b;

    .line 41
    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$b;)Lcom/instabug/chat/e/d;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 45
    new-instance v1, Lcom/instabug/chat/e/a;

    invoke-direct {v1}, Lcom/instabug/chat/e/a;-><init>()V

    .line 46
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/chat/e/a;->c(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    .line 47
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/instabug/chat/e/a;->b(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    const-string p2, "extra_video"

    .line 48
    invoke-virtual {v1, p2}, Lcom/instabug/chat/e/a;->e(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    const-string p2, "offline"

    .line 49
    invoke-virtual {v1, p2}, Lcom/instabug/chat/e/a;->d(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    const/4 p2, 0x0

    .line 50
    invoke-virtual {v1, p2}, Lcom/instabug/chat/e/a;->a(Z)Lcom/instabug/chat/e/a;

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding hanging message with ID: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/instabug/chat/g/a;->b(Ljava/lang/String;)V

    .line 56
    sget-object p2, Lcom/instabug/chat/e/d$c;->STAY_OFFLINE:Lcom/instabug/chat/e/d$c;

    invoke-virtual {v0, p2}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$c;)Lcom/instabug/chat/e/d;

    .line 58
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/instabug/chat/cache/ChatsCacheManager;->getChat(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 64
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object p2

    sget-object v1, Lcom/instabug/chat/e/b$a;->WAITING_ATTACHMENT_MESSAGE:Lcom/instabug/chat/e/b$a;

    if-ne p2, v1, :cond_1

    .line 65
    sget-object p2, Lcom/instabug/chat/e/b$a;->SENT:Lcom/instabug/chat/e/b$a;

    invoke-virtual {p1, p2}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object p2

    sget-object v1, Lcom/instabug/chat/e/b$a;->SENT:Lcom/instabug/chat/e/b$a;

    if-eq p2, v1, :cond_2

    .line 67
    sget-object p2, Lcom/instabug/chat/e/b$a;->READY_TO_BE_SENT:Lcom/instabug/chat/e/b$a;

    invoke-virtual {p1, p2}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    .line 70
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 73
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static b()Lcom/instabug/chat/g/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/g/a;->e:Lcom/instabug/chat/g/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/chat/g/a;

    invoke-direct {v0}, Lcom/instabug/chat/g/a;-><init>()V

    sput-object v0, Lcom/instabug/chat/g/a;->e:Lcom/instabug/chat/g/a;

    .line 5
    :cond_0
    sget-object v0, Lcom/instabug/chat/g/a;->e:Lcom/instabug/chat/g/a;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/instabug/chat/g/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/instabug/chat/cache/ChatsCacheManager;->getChat(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/instabug/chat/g/a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 14
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/chat/e/d;

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getting message with ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 18
    invoke-direct {p0, v4, p1}, Lcom/instabug/chat/g/a;->a(Lcom/instabug/chat/e/d;Landroid/net/Uri;)V

    .line 19
    sget-object v5, Lcom/instabug/chat/e/d$c;->READY_TO_BE_SENT:Lcom/instabug/chat/e/d$c;

    invoke-virtual {v4, v5}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$c;)Lcom/instabug/chat/e/d;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "video is encoded and updated in its message"

    .line 28
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 32
    invoke-static {p1}, Lcom/instabug/chat/network/b;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    const-string p1, "Hanging Chat is null and can\'t be updated"

    .line 36
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/instabug/chat/g/a;->b:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/g/a;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/g/a;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/chat/g/a;->d:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/instabug/chat/g/a;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/g/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 3
    iput-object p1, p0, Lcom/instabug/chat/g/a;->a:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->init()V

    .line 7
    iget-object v0, p0, Lcom/instabug/chat/g/a;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    :cond_0
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/chat/g/a$a;

    invoke-direct {v1, p0}, Lcom/instabug/chat/g/a$a;-><init>(Lcom/instabug/chat/g/a;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/chat/g/a;->c:Lio/reactivex/disposables/Disposable;

    .line 28
    :cond_1
    invoke-static {}, Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;->getInstance()Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/chat/g/a$b;

    invoke-direct {v1, p0, p1}, Lcom/instabug/chat/g/a$b;-><init>(Lcom/instabug/chat/g/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/chat/g/a;->d:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isRecording()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/g/a;->c()V

    .line 2
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->clear()V

    return-void
.end method

.method public delete()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->delete()V

    return-void
.end method

.method public getAutoScreenRecordingFileUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getAutoScreenRecordingFileUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isEnabled()Z

    move-result v0

    return v0
.end method
