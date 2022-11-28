.class final Llayout/pickers/GenderPicker$pickGender$1;
.super Ljava/lang/Object;
.source "GenderPicker.kt"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/pickers/GenderPicker;->pickGender(Landroid/content/Context;Lbike/smarthalo/app/models/userModels/Gender;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "group",
        "Landroid/widget/RadioGroup;",
        "kotlin.jvm.PlatformType",
        "checkedId",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $alertDialog:Landroid/app/AlertDialog;

.field final synthetic $onGenderPicked:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Llayout/pickers/GenderPicker$pickGender$1;->$alertDialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Llayout/pickers/GenderPicker$pickGender$1;->$onGenderPicked:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f0a018f

    if-eq p2, p1, :cond_3

    const p1, 0x7f0a0373

    if-eq p2, p1, :cond_2

    const p1, 0x7f0a03b7

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a03ba

    if-eq p2, p1, :cond_0

    .line 38
    sget-object p1, Lbike/smarthalo/app/models/userModels/Gender;->NotDisclosed:Lbike/smarthalo/app/models/userModels/Gender;

    goto :goto_0

    .line 37
    :cond_0
    sget-object p1, Lbike/smarthalo/app/models/userModels/Gender;->NotDisclosed:Lbike/smarthalo/app/models/userModels/Gender;

    goto :goto_0

    .line 36
    :cond_1
    sget-object p1, Lbike/smarthalo/app/models/userModels/Gender;->Other:Lbike/smarthalo/app/models/userModels/Gender;

    goto :goto_0

    .line 35
    :cond_2
    sget-object p1, Lbike/smarthalo/app/models/userModels/Gender;->Male:Lbike/smarthalo/app/models/userModels/Gender;

    goto :goto_0

    .line 34
    :cond_3
    sget-object p1, Lbike/smarthalo/app/models/userModels/Gender;->Female:Lbike/smarthalo/app/models/userModels/Gender;

    .line 40
    :goto_0
    iget-object p2, p0, Llayout/pickers/GenderPicker$pickGender$1;->$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 41
    iget-object p2, p0, Llayout/pickers/GenderPicker$pickGender$1;->$onGenderPicked:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
