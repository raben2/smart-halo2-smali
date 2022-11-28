.class Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService$a;
.super Ljava/lang/Object;
.source "InstabugAnnouncementSubmitterService.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService;->a()V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/d/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService;Lcom/instabug/survey/d/c/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService$a;->a:Lcom/instabug/survey/d/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService$a;->a:Lcom/instabug/survey/d/c/a;

    sget-object v0, Lcom/instabug/survey/e/c/f;->SYNCED:Lcom/instabug/survey/e/c/f;

    invoke-virtual {p1, v0}, Lcom/instabug/survey/d/c/a;->a(Lcom/instabug/survey/e/c/f;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService$a;->a:Lcom/instabug/survey/d/c/a;

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService$a;->a:Lcom/instabug/survey/d/c/a;

    invoke-static {p1}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->updateAnnouncement(Lcom/instabug/survey/d/c/a;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService$a;->a(Ljava/lang/Throwable;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
