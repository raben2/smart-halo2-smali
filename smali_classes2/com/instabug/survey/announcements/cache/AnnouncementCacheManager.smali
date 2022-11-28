.class public Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;
.super Ljava/lang/Object;
.source "AnnouncementCacheManager.java"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAnnouncement(Lcom/instabug/survey/d/c/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/survey/announcements/cache/b;->b(Lcom/instabug/survey/d/c/a;)J

    return-void
.end method

.method public static addAnnouncements(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/d/c/a;

    .line 2
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->isAnnouncementExist(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->addAnnouncement(Lcom/instabug/survey/d/c/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static deleteAllAnnouncement()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/survey/announcements/cache/b;->a()V

    return-void
.end method

.method public static deleteAnnouncement(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/survey/announcements/cache/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteAnnouncementAssets()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/survey/announcements/cache/a;->a()V

    return-void
.end method

.method public static getAllAnnouncement()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/announcements/cache/b;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAnnouncement(J)Lcom/instabug/survey/d/c/a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/instabug/survey/announcements/cache/b;->b(J)Lcom/instabug/survey/d/c/a;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnouncementAsset(JJ)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/announcements/cache/a;->a(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnouncementsByType(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/survey/announcements/cache/b;->a(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getReadyToBeSend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/announcements/cache/b;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static insertAnnouncementAsset(JJLjava/lang/String;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/instabug/survey/announcements/cache/a;->a(JJLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static insertOrUpdatePausedOrLocale(Lcom/instabug/survey/d/c/a;ZZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$a;-><init>(Lcom/instabug/survey/d/c/a;ZZ)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isAnnouncementExist(J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/instabug/survey/announcements/cache/b;->a(J)Z

    move-result p0

    return p0
.end method

.method public static resetAnnouncementUserInteraction(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/d/c/a;

    .line 2
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/a;->u()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/instabug/survey/announcements/cache/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public static updateAnnouncement(Lcom/instabug/survey/d/c/a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$b;

    invoke-direct {v0, p0}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$b;-><init>(Lcom/instabug/survey/d/c/a;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateBulk(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$c;

    invoke-direct {v0, p0}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$c;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method
