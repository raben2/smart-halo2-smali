.class Lpl/brightinventions/slf4android/ActivityStateListener;
.super Ljava/lang/Object;
.source "ActivityStateListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private activeActivity:Landroid/app/Activity;

.field private lastUsedActivity:Landroid/app/Activity;

.field private pauseHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lpl/brightinventions/slf4android/ActivityStateListener;->pauseHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lpl/brightinventions/slf4android/ActivityStateListener;)Landroid/app/Activity;
    .locals 0

    .line 12
    iget-object p0, p0, Lpl/brightinventions/slf4android/ActivityStateListener;->activeActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$002(Lpl/brightinventions/slf4android/ActivityStateListener;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 12
    iput-object p1, p0, Lpl/brightinventions/slf4android/ActivityStateListener;->activeActivity:Landroid/app/Activity;

    return-object p1
.end method


# virtual methods
.method public getLastUsedActivity()Landroid/app/Activity;
    .locals 1

    .line 67
    iget-object v0, p0, Lpl/brightinventions/slf4android/ActivityStateListener;->lastUsedActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public isAppInForeground()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lpl/brightinventions/slf4android/ActivityStateListener;->activeActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 39
    iget-object v0, p0, Lpl/brightinventions/slf4android/ActivityStateListener;->pauseHandler:Landroid/os/Handler;

    new-instance v1, Lpl/brightinventions/slf4android/ActivityStateListener$1;

    invoke-direct {v1, p0, p1}, Lpl/brightinventions/slf4android/ActivityStateListener$1;-><init>(Lpl/brightinventions/slf4android/ActivityStateListener;Landroid/app/Activity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lpl/brightinventions/slf4android/ActivityStateListener;->lastUsedActivity:Landroid/app/Activity;

    .line 30
    iput-object p1, p0, Lpl/brightinventions/slf4android/ActivityStateListener;->activeActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lpl/brightinventions/slf4android/ActivityStateListener;->lastUsedActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lpl/brightinventions/slf4android/ActivityStateListener;->lastUsedActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method
