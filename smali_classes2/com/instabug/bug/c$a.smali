.class Lcom/instabug/bug/c$a;
.super Ljava/lang/Object;
.source "LiveBugManager.java"

# interfaces
.implements Lcom/instabug/library/internal/orchestrator/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instabug/bug/c;


# direct methods
.method constructor <init>(Lcom/instabug/bug/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    iput-object p2, p0, Lcom/instabug/bug/c$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    invoke-static {v0}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/c;)Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/instabug/library/model/Report;

    invoke-direct {v1}, Lcom/instabug/library/model/Report;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/instabug/library/model/Report$OnReportCreatedListener;->onReportCreated(Lcom/instabug/library/model/Report;)V

    .line 7
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/instabug/library/util/ReportHelper;->update(Lcom/instabug/library/model/State;Lcom/instabug/library/model/Report;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    iget-object v1, p0, Lcom/instabug/bug/c$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/c;Landroid/content/Context;)V

    .line 13
    iget-object v0, p0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    iget-object v1, p0, Lcom/instabug/bug/c$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/instabug/bug/c;->b(Lcom/instabug/bug/c;Landroid/content/Context;)V

    .line 15
    iget-object v0, p0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    invoke-static {v0}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/c;)Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->encryptAttachments(Ljava/util/List;)V

    .line 17
    iget-object v0, p0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    invoke-virtual {v0}, Lcom/instabug/bug/c;->g()V

    .line 19
    iget-object v0, p0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    sget-object v1, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->SUBMIT:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    invoke-virtual {v0, v1}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;)V

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    invoke-static {v0}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/c;)Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v1, p0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    iget-object v2, p0, Lcom/instabug/bug/c$a;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/c;Landroid/content/Context;Lcom/instabug/library/model/State;)V

    goto :goto_0

    :cond_1
    const-string v0, "LiveBugManager"

    const-string v1, "State was not created with bug"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    invoke-static {v0}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/c;)Lcom/instabug/bug/model/a;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/model/State$Builder;

    iget-object v2, p0, Lcom/instabug/bug/c$a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instabug/library/model/State$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$Builder;->build(Z)Lcom/instabug/library/model/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/bug/model/a;->setState(Lcom/instabug/library/model/State;)Lcom/instabug/bug/model/a;

    .line 29
    :goto_0
    invoke-static {}, Lcom/instabug/bug/c;->j()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "LiveBugManager"

    const-string v2, "IOException while committing bug"

    .line 33
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "LiveBugManager"

    const-string v2, "commit bug: "

    .line 34
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :goto_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/instabug/bug/c$a$a;

    invoke-direct {v1, p0}, Lcom/instabug/bug/c$a$a;-><init>(Lcom/instabug/bug/c$a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void
.end method
