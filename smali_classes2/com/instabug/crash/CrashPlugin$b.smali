.class Lcom/instabug/crash/CrashPlugin$b;
.super Ljava/lang/Object;
.source "CrashPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/crash/CrashPlugin;->startAnrsUploaderService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/instabug/crash/CrashPlugin;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/crash/CrashPlugin$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/crash/CrashPlugin$b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, La/a/a/c/a;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/instabug/crash/CrashPlugin$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instabug/crash/CrashPlugin$b;->a:Landroid/content/Context;

    const-class v2, Lcom/instabug/anr/network/InstabugAnrUploaderService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v1, p0, Lcom/instabug/crash/CrashPlugin$b;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/instabug/anr/network/InstabugAnrUploaderService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
