.class final Lcom/instabug/survey/ui/h/a$b;
.super Ljava/lang/Object;
.source "CustomQuestionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/h/a;->b(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/survey/ui/h/a$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AlertDialog;

.field final synthetic b:Lcom/instabug/survey/ui/h/a$f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertDialog;Lcom/instabug/survey/ui/h/a$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/h/a$b;->a:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/instabug/survey/ui/h/a$b;->b:Lcom/instabug/survey/ui/h/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/instabug/survey/ui/h/a$b;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/instabug/survey/ui/h/a$b;->b:Lcom/instabug/survey/ui/h/a$f;

    invoke-interface {p1}, Lcom/instabug/survey/ui/h/a$f;->a()V

    return-void
.end method
