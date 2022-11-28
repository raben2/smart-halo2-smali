.class Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;
.super Ljava/lang/Object;
.source "AnnouncementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;


# direct methods
.method constructor <init>(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;->b:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    iput-object p2, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getStartedActivitiesCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;->b:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->finish()V

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;->b:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;->b:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    iget-boolean v0, v0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->a:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;->b:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    iget-object v1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;->b:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "announcement"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/d/c/a;

    invoke-static {v0, v1}, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->a(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;Lcom/instabug/survey/d/c/a;)Lcom/instabug/survey/d/c/a;

    .line 8
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;->b:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;->b:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    .line 10
    invoke-static {v1}, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->a(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;)Lcom/instabug/survey/d/c/a;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/instabug/survey/announcements/ui/activity/c;->a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/d/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Announcement has not been shown due to this error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    const-class v1, Lcom/instabug/survey/ui/SurveyActivity;

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
