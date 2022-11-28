.class Lcom/instabug/library/invocation/d/b$b;
.super Ljava/lang/Object;
.source "FloatingButtonInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/d/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/d/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/b$b;->a:Lcom/instabug/library/invocation/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/b$b;->a:Lcom/instabug/library/invocation/d/b;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/b;->a(Lcom/instabug/library/invocation/d/b;)V

    return-void
.end method
