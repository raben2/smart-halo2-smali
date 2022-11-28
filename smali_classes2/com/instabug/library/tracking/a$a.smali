.class Lcom/instabug/library/tracking/a$a;
.super Ljava/lang/Object;
.source "InstabugActivityLifecycleListener.java"

# interfaces
.implements Lcom/instabug/library/util/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/tracking/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/library/tracking/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/h;->a(Z)V

    return-void
.end method
