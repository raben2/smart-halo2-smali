.class final Lcom/instabug/crash/CrashReporting$a;
.super Ljava/lang/Object;
.source "CrashReporting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/crash/CrashReporting;->reportException(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/crash/CrashReporting$a;->a:Lorg/json/JSONObject;

    iput-boolean p2, p0, Lcom/instabug/crash/CrashReporting$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/instabug/library/model/State;->getState(Landroid/content/Context;)Lcom/instabug/library/model/State;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/library/util/ReportHelper;->getReport(Lcom/instabug/library/model/Report$OnReportCreatedListener;)Lcom/instabug/library/model/Report;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/instabug/crash/CrashReporting$a;->a:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/instabug/crash/CrashReporting$a;->b:Z

    invoke-static {v3, v4, v1}, Lcom/instabug/crash/CrashReporting;->getCrash(Lorg/json/JSONObject;ZLcom/instabug/library/model/State;)Lcom/instabug/crash/c/a;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/instabug/crash/c/a;->f()Lcom/instabug/library/model/State;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/instabug/library/util/ReportHelper;->update(Lcom/instabug/library/model/State;Lcom/instabug/library/model/Report;)V

    .line 10
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 12
    invoke-static {v0, v1}, Lcom/instabug/crash/CrashReporting;->addCrashAttachments(Landroid/content/Context;Lcom/instabug/crash/c/a;)V

    .line 15
    :cond_1
    invoke-static {v0}, Lcom/instabug/library/internal/storage/DiskUtils;->createStateTextFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 16
    invoke-static {v0, v1, v2}, Lcom/instabug/crash/CrashReporting;->access$000(Landroid/content/Context;Lcom/instabug/crash/c/a;Ljava/io/File;)V

    .line 18
    invoke-static {v1}, Lcom/instabug/crash/b/b;->b(Lcom/instabug/crash/c/a;)J

    const-string v1, "CrashReporting"

    const-string v2, "ReportCaughtException: Your exception has been reported"

    .line 20
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instabug/crash/network/InstabugCrashesUploaderService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    invoke-static {v0, v1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    invoke-static {}, Lcom/instabug/crash/d/a;->b()Lcom/instabug/crash/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/crash/d/a;->a()V

    return-void
.end method
