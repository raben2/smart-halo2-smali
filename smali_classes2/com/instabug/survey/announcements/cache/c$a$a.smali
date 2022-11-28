.class Lcom/instabug/survey/announcements/cache/c$a$a;
.super Ljava/lang/Object;
.source "NewFeaturesAssetsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/announcements/cache/c$a;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/announcements/cache/c$a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/announcements/cache/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/announcements/cache/c$a$a;->a:Lcom/instabug/survey/announcements/cache/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/announcements/cache/c$a$a;->a:Lcom/instabug/survey/announcements/cache/c$a;

    iget-object v0, v0, Lcom/instabug/survey/announcements/cache/c$a;->a:Lcom/instabug/survey/d/c/a;

    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->updateAnnouncement(Lcom/instabug/survey/d/c/a;)V

    return-void
.end method
