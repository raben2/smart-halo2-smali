.class Lcom/instabug/apm/APMPlugin$a;
.super Ljava/lang/Object;
.source "APMPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/APMPlugin;->clearInvalidCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/f/b/a;


# direct methods
.method constructor <init>(Lcom/instabug/apm/APMPlugin;Lcom/instabug/apm/f/b/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/apm/APMPlugin$a;->a:Lcom/instabug/apm/f/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/APMPlugin$a;->a:Lcom/instabug/apm/f/b/a;

    invoke-interface {v0}, Lcom/instabug/apm/f/b/a;->b()V

    return-void
.end method
