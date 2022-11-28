.class Lcom/instabug/survey/announcements/cache/c$b$a$a;
.super Ljava/lang/Object;
.source "NewFeaturesAssetsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/announcements/cache/c$b$a;->onSuccess(Lcom/instabug/library/model/AssetEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/model/AssetEntity;

.field final synthetic b:Lcom/instabug/survey/announcements/cache/c$b$a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/announcements/cache/c$b$a;Lcom/instabug/library/model/AssetEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/announcements/cache/c$b$a$a;->b:Lcom/instabug/survey/announcements/cache/c$b$a;

    iput-object p2, p0, Lcom/instabug/survey/announcements/cache/c$b$a$a;->a:Lcom/instabug/library/model/AssetEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/announcements/cache/c$b$a$a;->b:Lcom/instabug/survey/announcements/cache/c$b$a;

    iget-object v0, v0, Lcom/instabug/survey/announcements/cache/c$b$a;->b:Lcom/instabug/survey/announcements/cache/c$b;

    iget-wide v1, v0, Lcom/instabug/survey/announcements/cache/c$b;->b:J

    iget-object v0, v0, Lcom/instabug/survey/announcements/cache/c$b;->a:Lcom/instabug/survey/d/c/e;

    .line 3
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/e;->c()J

    move-result-wide v3

    iget-object v0, p0, Lcom/instabug/survey/announcements/cache/c$b$a$a;->a:Lcom/instabug/library/model/AssetEntity;

    .line 4
    invoke-virtual {v0}, Lcom/instabug/library/model/AssetEntity;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v2, v3, v4, v0}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->insertAnnouncementAsset(JJLjava/lang/String;)J

    .line 9
    iget-object v0, p0, Lcom/instabug/survey/announcements/cache/c$b$a$a;->b:Lcom/instabug/survey/announcements/cache/c$b$a;

    iget-object v0, v0, Lcom/instabug/survey/announcements/cache/c$b$a;->a:Lio/reactivex/ObservableEmitter;

    iget-object v1, p0, Lcom/instabug/survey/announcements/cache/c$b$a$a;->a:Lcom/instabug/library/model/AssetEntity;

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/instabug/survey/announcements/cache/c$b$a$a;->b:Lcom/instabug/survey/announcements/cache/c$b$a;

    iget-object v0, v0, Lcom/instabug/survey/announcements/cache/c$b$a;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
