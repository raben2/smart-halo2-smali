.class Lcom/instabug/library/visualusersteps/h$c;
.super Ljava/lang/Object;
.source "VisualUserStepsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/instabug/library/visualusersteps/c;

.field final synthetic c:Lcom/instabug/library/visualusersteps/h;


# direct methods
.method constructor <init>(Lcom/instabug/library/visualusersteps/h;Landroid/app/Activity;Lcom/instabug/library/visualusersteps/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/h$c;->c:Lcom/instabug/library/visualusersteps/h;

    iput-object p2, p0, Lcom/instabug/library/visualusersteps/h$c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/instabug/library/visualusersteps/h$c;->b:Lcom/instabug/library/visualusersteps/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h$c;->c:Lcom/instabug/library/visualusersteps/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/h;Z)Z

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h$c;->a:Landroid/app/Activity;

    new-instance v1, Lcom/instabug/library/visualusersteps/h$c$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/visualusersteps/h$c$a;-><init>(Lcom/instabug/library/visualusersteps/h$c;)V

    invoke-static {v0, v1}, Lcom/instabug/library/screenshot/ScreenshotProvider;->a(Landroid/app/Activity;Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V

    return-void
.end method
