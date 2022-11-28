.class Lcom/instabug/survey/announcements/cache/c$b$a;
.super Ljava/lang/Object;
.source "NewFeaturesAssetsHelper.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/announcements/cache/c$b;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic b:Lcom/instabug/survey/announcements/cache/c$b;


# direct methods
.method constructor <init>(Lcom/instabug/survey/announcements/cache/c$b;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/announcements/cache/c$b$a;->b:Lcom/instabug/survey/announcements/cache/c$b;

    iput-object p2, p0, Lcom/instabug/survey/announcements/cache/c$b$a;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/announcements/cache/c$b$a;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/announcements/cache/c$b$a;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assets Request got error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/instabug/survey/announcements/cache/c;

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/instabug/library/model/AssetEntity;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/survey/announcements/cache/c$b$a$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/survey/announcements/cache/c$b$a$a;-><init>(Lcom/instabug/survey/announcements/cache/c$b$a;Lcom/instabug/library/model/AssetEntity;)V

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->doOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method
