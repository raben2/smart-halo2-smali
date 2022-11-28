.class Lpl/brightinventions/slf4android/NotifyDeveloperHandler$1;
.super Ljava/lang/Object;
.source "NotifyDeveloperHandler.java"

# interfaces
.implements Lcom/squareup/seismic/ShakeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/brightinventions/slf4android/NotifyDeveloperHandler;-><init>(Landroid/app/Application;Ljava/lang/Iterable;Lpl/brightinventions/slf4android/LogLevel;Lpl/brightinventions/slf4android/ActivityStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;


# direct methods
.method constructor <init>(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$1;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hearShake()V
    .locals 4

    .line 50
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$1;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$000(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/brightinventions/slf4android/ActivityStateListener;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lpl/brightinventions/slf4android/ActivityStateListener;->isAppInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$1;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    new-instance v1, Ljava/util/logging/LogRecord;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Report a problem with app"

    invoke-direct {v1, v2, v3}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$100(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;Ljava/util/logging/LogRecord;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignore shake event - the app appears to be in background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignore shake event - can\'t detect if app is in foreground (API < 14)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
