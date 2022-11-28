.class Lcom/instabug/crash/CrashPlugin$c;
.super Ljava/lang/Object;
.source "CrashPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/crash/CrashPlugin;->startCrashesUploaderService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instabug/crash/CrashPlugin;


# direct methods
.method constructor <init>(Lcom/instabug/crash/CrashPlugin;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/crash/CrashPlugin$c;->b:Lcom/instabug/crash/CrashPlugin;

    iput-object p2, p0, Lcom/instabug/crash/CrashPlugin$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/crash/CrashPlugin$c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/crash/b/b;->b()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/instabug/crash/CrashPlugin$c;->b:Lcom/instabug/crash/CrashPlugin;

    invoke-static {v0}, Lcom/instabug/crash/CrashPlugin;->access$300(Lcom/instabug/crash/CrashPlugin;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/instabug/crash/CrashPlugin$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/instabug/crash/CrashPlugin$c;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instabug/crash/network/InstabugCrashesUploaderService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
