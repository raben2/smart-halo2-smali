.class Lcom/instabug/library/invocation/b$b;
.super Ljava/lang/Object;
.source "InvocationRequestListenerImp.java"

# interfaces
.implements Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/b;->a(Lcom/instabug/library/core/plugin/PluginPromptOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/core/plugin/PluginPromptOption;

.field final synthetic b:Lcom/instabug/library/invocation/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/b;Lcom/instabug/library/core/plugin/PluginPromptOption;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/b$b;->b:Lcom/instabug/library/invocation/b;

    iput-object p2, p0, Lcom/instabug/library/invocation/b$b;->a:Lcom/instabug/library/core/plugin/PluginPromptOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenshotCapturedSuccessfully(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/b$b;->b:Lcom/instabug/library/invocation/b;

    iget-object v1, p0, Lcom/instabug/library/invocation/b$b;->a:Lcom/instabug/library/core/plugin/PluginPromptOption;

    invoke-virtual {v0, p1, v1}, Lcom/instabug/library/invocation/b;->a(Landroid/net/Uri;Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    return-void
.end method

.method public onScreenshotCapturingFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/instabug/library/invocation/b$b;->b:Lcom/instabug/library/invocation/b;

    iget-object v0, p0, Lcom/instabug/library/invocation/b$b;->a:Lcom/instabug/library/core/plugin/PluginPromptOption;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/invocation/b;->a(Landroid/net/Uri;Lcom/instabug/library/core/plugin/PluginPromptOption;)V

    return-void
.end method
