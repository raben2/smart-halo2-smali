.class final Lcom/instabug/featuresrequest/b$a;
.super Ljava/lang/Object;
.source "FeaturesRequestPluginWrapper.java"

# interfaces
.implements Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/b;->b(Landroid/content/Context;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onInvoke(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/b$a;->a:Landroid/content/Context;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, p2, p2, v0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/instabug/featuresrequest/b$a;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/instabug/featuresrequest/b$a;->a:Landroid/content/Context;

    const-class v0, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/instabug/featuresrequest/b$a;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
