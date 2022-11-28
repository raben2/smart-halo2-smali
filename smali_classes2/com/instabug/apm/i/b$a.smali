.class Lcom/instabug/apm/i/b$a;
.super Ljava/lang/Object;
.source "APMSyncManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/i/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/i/b;


# direct methods
.method constructor <init>(Lcom/instabug/apm/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/i/b$a;->a:Lcom/instabug/apm/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/i/b$a;->a:Lcom/instabug/apm/i/b;

    invoke-virtual {v0}, Lcom/instabug/apm/i/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/i/b$a;->a:Lcom/instabug/apm/i/b;

    invoke-virtual {v0}, Lcom/instabug/apm/i/b;->c()V

    :cond_0
    return-void
.end method
