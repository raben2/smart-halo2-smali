.class final Landroidx/core/app/IBGJobIntentServiceImp$a;
.super Ljava/lang/Object;
.source "IBGJobIntentServiceImp.java"

# interfaces
.implements Landroidx/core/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/IBGJobIntentServiceImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/app/job/JobWorkItem;

.field final synthetic b:Landroidx/core/app/IBGJobIntentServiceImp;


# direct methods
.method constructor <init>(Landroidx/core/app/IBGJobIntentServiceImp;Landroid/app/job/JobWorkItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/IBGJobIntentServiceImp$a;->b:Landroidx/core/app/IBGJobIntentServiceImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/core/app/IBGJobIntentServiceImp$a;->a:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/IBGJobIntentServiceImp$a;->b:Landroidx/core/app/IBGJobIntentServiceImp;

    iget-object v0, v0, Landroidx/core/app/IBGJobIntentServiceImp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/IBGJobIntentServiceImp$a;->b:Landroidx/core/app/IBGJobIntentServiceImp;

    iget-object v1, v1, Landroidx/core/app/IBGJobIntentServiceImp;->mParams:Landroid/app/job/JobParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Landroidx/core/app/IBGJobIntentServiceImp$a;->b:Landroidx/core/app/IBGJobIntentServiceImp;

    iget-object v1, v1, Landroidx/core/app/IBGJobIntentServiceImp;->mParams:Landroid/app/job/JobParameters;

    iget-object v2, p0, Landroidx/core/app/IBGJobIntentServiceImp$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "IBGJobIntentServiceImp"

    const-string v3, "IBJonIntentServiceImp has an issue on complete"

    .line 6
    invoke-static {v2, v3, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/IBGJobIntentServiceImp$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
