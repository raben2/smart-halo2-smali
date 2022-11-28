.class public Lcom/instabug/bug/screenshot/viewhierarchy/utilities/a;
.super Landroid/text/method/PasswordTransformationMethod;
.source "AsteriskPasswordTransformationMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/bug/screenshot/viewhierarchy/utilities/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    new-instance p2, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/a$a;

    invoke-direct {p2, p1}, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/a$a;-><init>(Ljava/lang/CharSequence;)V

    return-object p2
.end method
