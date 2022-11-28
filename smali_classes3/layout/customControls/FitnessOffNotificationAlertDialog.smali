.class public final Llayout/customControls/FitnessOffNotificationAlertDialog;
.super Ljava/lang/Object;
.source "FitnessOffNotificationAlertDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Llayout/customControls/FitnessOffNotificationAlertDialog;",
        "",
        "()V",
        "show",
        "",
        "context",
        "Landroid/content/Context;",
        "onTurnOn",
        "Llayout/customControls/BaseAlertDialog$ClickContract;",
        "onDontRemindMe",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Llayout/customControls/FitnessOffNotificationAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Llayout/customControls/FitnessOffNotificationAlertDialog;

    invoke-direct {v0}, Llayout/customControls/FitnessOffNotificationAlertDialog;-><init>()V

    sput-object v0, Llayout/customControls/FitnessOffNotificationAlertDialog;->INSTANCE:Llayout/customControls/FitnessOffNotificationAlertDialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final show(Landroid/content/Context;Llayout/customControls/BaseAlertDialog$ClickContract;Llayout/customControls/BaseAlertDialog$ClickContract;)V
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llayout/customControls/BaseAlertDialog$ClickContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llayout/customControls/BaseAlertDialog$ClickContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTurnOn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDontRemindMe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f11015a

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const v0, 0x7f110155

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const v0, 0x7f11015c

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const v0, 0x7f110159

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const v0, 0x7f110158

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    .line 25
    new-instance v0, Llayout/customControls/FitnessOffNotificationAlertDialog$show$1;

    invoke-direct {v0, p1}, Llayout/customControls/FitnessOffNotificationAlertDialog$show$1;-><init>(Llayout/customControls/BaseAlertDialog$ClickContract;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 26
    sget-object p1, Llayout/customControls/FitnessOffNotificationAlertDialog$show$2;->INSTANCE:Llayout/customControls/FitnessOffNotificationAlertDialog$show$2;

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 27
    new-instance p1, Llayout/customControls/FitnessOffNotificationAlertDialog$show$3;

    invoke-direct {p1, p2}, Llayout/customControls/FitnessOffNotificationAlertDialog$show$3;-><init>(Llayout/customControls/BaseAlertDialog$ClickContract;)V

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v1, p0

    .line 18
    invoke-static/range {v1 .. v9}, Llayout/customControls/BaseAlertDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
