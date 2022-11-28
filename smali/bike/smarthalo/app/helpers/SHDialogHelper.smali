.class public final Lbike/smarthalo/app/helpers/SHDialogHelper;
.super Ljava/lang/Object;
.source "SHDialogHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSHDialogHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SHDialogHelper.kt\nbike/smarthalo/app/helpers/SHDialogHelper\n*L\n1#1,307:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00018B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JF\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0008H\u0003J&\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007J \u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0008H\u0007JF\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001d2\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001dH\u0007J2\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007JD\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0007J8\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020 2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00130&H\u0007J:\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u00082\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0007J\u0012\u0010)\u001a\u00020\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J4\u0010*\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010-\u001a\u00020\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0007J&\u0010.\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0002\u0010/\u001a\u00020\u0008H\u0007J\u0014\u0010.\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u001c\u0010.\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0011\u001a\u00020\u0008H\u0007J \u0010.\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u0008H\u0007J\u0010\u00100\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u00101\u001a\u00020\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u00102\u001a\u00020\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u00103\u001a\u00020\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u0010\u00104\u001a\u00020\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\"\u00105\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007\u00a8\u00069"
    }
    d2 = {
        "Lbike/smarthalo/app/helpers/SHDialogHelper;",
        "",
        "()V",
        "createConfirmationDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "context",
        "Landroid/content/Context;",
        "titleId",
        "",
        "descriptionId",
        "confirmTextId",
        "cancelTextId",
        "onConfirm",
        "Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;",
        "onCancel",
        "getProgressDialog",
        "Landroid/app/ProgressDialog;",
        "stringId",
        "presentEmailConfirmAlert",
        "",
        "onPositive",
        "Landroid/content/DialogInterface$OnClickListener;",
        "onNegative",
        "showAppToast",
        "activity",
        "Landroid/app/Activity;",
        "imageResource",
        "textResource",
        "showConfirmationDialog",
        "Lkotlin/Function0;",
        "showDatePickerDialog",
        "allowFutureDates",
        "",
        "dateSetListener",
        "Landroid/app/DatePickerDialog$OnDateSetListener;",
        "date",
        "Ljava/util/Date;",
        "onDateSelected",
        "Lkotlin/Function1;",
        "year",
        "month",
        "showErrorToast",
        "showHtmlConfirmationDialog",
        "description",
        "",
        "showInformationDialog",
        "showLoading",
        "delayMillis",
        "showLoadingIndeterminate",
        "showNoDataToast",
        "showNoLocationToast",
        "showProgressLoading",
        "showTapCodeConnectionToast",
        "showToast",
        "textResourceId",
        "toastLength",
        "SHDialogOnClick",
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
.field public static final INSTANCE:Lbike/smarthalo/app/helpers/SHDialogHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lbike/smarthalo/app/helpers/SHDialogHelper;

    invoke-direct {v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;-><init>()V

    sput-object v0, Lbike/smarthalo/app/helpers/SHDialogHelper;->INSTANCE:Lbike/smarthalo/app/helpers/SHDialogHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createConfirmationDialog(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)Landroidx/appcompat/app/AlertDialog;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 277
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v1, 0x7f120005

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 279
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 280
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 281
    new-instance p1, Lbike/smarthalo/app/helpers/SHDialogHelper$createConfirmationDialog$1;

    invoke-direct {p1, p5}, Lbike/smarthalo/app/helpers/SHDialogHelper$createConfirmationDialog$1;-><init>(Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    check-cast p1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 284
    new-instance p1, Lbike/smarthalo/app/helpers/SHDialogHelper$createConfirmationDialog$2;

    invoke-direct {p1, p6}, Lbike/smarthalo/app/helpers/SHDialogHelper$createConfirmationDialog$2;-><init>(Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    check-cast p1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, p4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 287
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const-string p1, "builder\n                \u2026                .create()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 53
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f1202b0

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 55
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 p0, 0x0

    .line 56
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 57
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 59
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method

.method public static final presentEmailConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120005

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1100f7

    .line 100
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 101
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const v2, 0x7f110098

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.string.confirmEmailRationale)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f110349

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    array-length p0, v3

    invoke-static {v3, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x7f110011

    .line 102
    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p0, v5, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static final showAppToast(Landroid/app/Activity;II)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0557

    .line 293
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/ImageView;

    .line 294
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f0a0556

    .line 295
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    .line 296
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 297
    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x10

    const/4 p2, 0x0

    .line 298
    invoke-virtual {p1, p0, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 299
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 300
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 301
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 295
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final showConfirmationDialog(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    new-instance v9, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;

    move-object v1, v9

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;-><init>(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    check-cast v9, Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 149
    new-instance v1, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p4

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;-><init>(Landroid/content/Context;IILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;I)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final showConfirmationDialog(Landroid/content/Context;IIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConfirm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    new-instance v1, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$3;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p4

    move v7, p3

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$3;-><init>(Landroid/content/Context;IILkotlin/jvm/functions/Function0;ILkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic showConfirmationDialog$default(Landroid/content/Context;IIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_0

    .line 161
    sget-object p5, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$2;->INSTANCE:Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$2;

    check-cast p5, Lkotlin/jvm/functions/Function0;

    move-object v5, p5

    goto :goto_0

    :cond_0
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final showDatePickerDialog(Landroid/content/Context;ZIIILandroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/app/DatePickerDialog;

    add-int/lit16 v4, p2, 0x76c

    move-object v1, v0

    move-object v2, p0

    move-object v3, p5

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    if-nez p1, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    const-string p2, "datePickerDialog.datePicker"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 271
    :cond_0
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    const p2, 0x7f0602d8

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/DatePicker;->setBackgroundColor(I)V

    .line 272
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method public static final showDatePickerDialog(Landroid/content/Context;ZLandroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v4, v1, -0x14

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    .line 247
    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    if-nez p1, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    const-string p2, "datePickerDialog.datePicker"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 255
    :cond_0
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    const p2, 0x7f0602d8

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/DatePicker;->setBackgroundColor(I)V

    .line 256
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method public static final showDatePickerDialog(Landroid/content/Context;ZLjava/util/Date;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Date;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Date;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDateSelected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lbike/smarthalo/app/helpers/SHDialogHelper$showDatePickerDialog$dateListener$1;

    invoke-direct {v0, p3}, Lbike/smarthalo/app/helpers/SHDialogHelper$showDatePickerDialog$dateListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v4, v0

    check-cast v4, Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    if-eqz p2, :cond_0

    const-string v0, "calendar"

    .line 224
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 230
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    const/4 v3, 0x3

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 234
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    :goto_0
    move v5, p2

    const/4 p2, 0x2

    .line 235
    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 p2, 0x5

    .line 236
    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v1, v0

    move-object v2, p0

    .line 230
    invoke-direct/range {v1 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    if-nez p1, :cond_2

    .line 239
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p0

    const-string p1, "datePickerDialog.datePicker"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 241
    :cond_2
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method public static synthetic showDatePickerDialog$default(Landroid/content/Context;ZLjava/util/Date;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 213
    check-cast p2, Ljava/util/Date;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showDatePickerDialog(Landroid/content/Context;ZLjava/util/Date;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final showErrorToast(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    const v0, 0x7f11017d

    const/4 v1, 0x0

    .line 142
    invoke-static {v0, v1, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static final showHtmlConfirmationDialog(Landroid/content/Context;Ljava/lang/String;IILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    new-instance v1, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;-><init>(Landroid/content/Context;Ljava/lang/String;ILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;I)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final showInformationDialog(Landroid/content/Context;II)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 202
    new-instance v0, Lbike/smarthalo/app/helpers/SHDialogHelper$showInformationDialog$1;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/helpers/SHDialogHelper$showInformationDialog$1;-><init>(Landroid/content/Context;II)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final showLoading(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    .line 76
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v0, 0x7f110337

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading$default(Landroid/app/Activity;IIILjava/lang/Object;)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final showLoading(Landroid/app/Activity;I)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    .line 29
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/16 v0, 0x4e20

    invoke-static {p0, p1, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final showLoading(Landroid/app/Activity;II)Landroid/app/ProgressDialog;
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->getProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;

    move-result-object p1

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    new-instance v1, Lbike/smarthalo/app/helpers/SHDialogHelper$showLoading$1;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/helpers/SHDialogHelper$showLoading$1;-><init>(Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    check-cast v1, Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public static final showLoading(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->getProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;

    move-result-object p1

    int-to-long v0, p2

    .line 66
    new-instance p2, Lbike/smarthalo/app/helpers/SHDialogHelper$showLoading$2;

    invoke-direct {p2, p1}, Lbike/smarthalo/app/helpers/SHDialogHelper$showLoading$2;-><init>(Landroid/app/ProgressDialog;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-static {p0, v0, v1, p2}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-object p1
.end method

.method public static synthetic showLoading$default(Landroid/app/Activity;IIILjava/lang/Object;)Landroid/app/ProgressDialog;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const p1, 0x7f110337

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/16 p2, 0x4e20

    .line 33
    :cond_1
    invoke-static {p0, p1, p2}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final showLoadingIndeterminate(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110337

    .line 48
    invoke-static {p0, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->getProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final showNoDataToast(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    const v0, 0x7f1102c1

    const/4 v1, 0x0

    .line 128
    invoke-static {v0, v1, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static final showNoLocationToast(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    const v0, 0x7f1102c4

    const/4 v1, 0x0

    .line 135
    invoke-static {v0, v1, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static final showProgressLoading(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 81
    new-instance v0, Landroid/app/ProgressDialog;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 82
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 84
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 86
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method

.method public static final showToast(IILandroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p2, :cond_0

    .line 112
    new-instance v0, Lbike/smarthalo/app/helpers/SHDialogHelper$showToast$1;

    invoke-direct {v0, p2, p0, p1}, Lbike/smarthalo/app/helpers/SHDialogHelper$showToast$1;-><init>(Landroid/content/Context;II)V

    check-cast v0, Ljava/lang/Runnable;

    .line 110
    invoke-static {p2, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final showTapCodeConnectionToast(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const v0, 0x7f11003f

    const/4 v1, 0x0

    .line 118
    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    :cond_0
    return-void
.end method
