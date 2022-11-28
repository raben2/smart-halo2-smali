.class Lcom/instabug/survey/d/a$e;
.super Ljava/lang/Object;
.source "AnnouncementManager.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/db/InstabugDBInsertionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/d/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/storage/cache/db/InstabugDBInsertionListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/survey/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->getAllAnnouncement()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0, p1}, Lcom/instabug/survey/common/userInteractions/UserInteractionCacheManager;->insertUserInteractions(Ljava/util/List;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->resetAnnouncementUserInteraction(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onDataInserted(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/a$e;->a(Ljava/lang/String;)V

    return-void
.end method
