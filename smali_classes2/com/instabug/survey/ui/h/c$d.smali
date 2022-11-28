.class Lcom/instabug/survey/ui/h/c$d;
.super Ljava/lang/Object;
.source "PopupPublicQuestionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/h/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/ui/h/c;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/h/c$d;->a:Lcom/instabug/survey/ui/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/instabug/survey/ui/h/c$d;->a:Lcom/instabug/survey/ui/h/c;

    iget-object p1, p1, Lcom/instabug/survey/ui/h/f;->a:Lcom/instabug/survey/ui/h/g;

    invoke-virtual {p1}, Lcom/instabug/survey/ui/h/g;->c()V

    return-void
.end method
