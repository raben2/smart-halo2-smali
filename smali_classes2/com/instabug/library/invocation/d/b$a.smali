.class Lcom/instabug/library/invocation/d/b$a;
.super Ljava/lang/Object;
.source "FloatingButtonInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/d/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/instabug/library/invocation/d/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/d/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/b$a;->b:Lcom/instabug/library/invocation/d/b;

    iput-object p2, p0, Lcom/instabug/library/invocation/d/b$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b$a;->b:Lcom/instabug/library/invocation/d/b;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/b$a;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/instabug/library/invocation/d/b;->a(Lcom/instabug/library/invocation/d/b;Landroid/app/Activity;)V

    return-void
.end method
