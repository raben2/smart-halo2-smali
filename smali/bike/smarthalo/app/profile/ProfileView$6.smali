.class final Lbike/smarthalo/app/profile/ProfileView$6;
.super Ljava/lang/Object;
.source "ProfileView.kt"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/profile/ProfileView;-><init>(Lbike/smarthalo/app/profile/ProfilePresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
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
.field final synthetic $innerView:Landroid/view/View;

.field final synthetic this$0:Lbike/smarthalo/app/profile/ProfileView;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/profile/ProfileView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfileView$6;->this$0:Lbike/smarthalo/app/profile/ProfileView;

    iput-object p2, p0, Lbike/smarthalo/app/profile/ProfileView$6;->$innerView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 55
    iget-object p1, p0, Lbike/smarthalo/app/profile/ProfileView$6;->this$0:Lbike/smarthalo/app/profile/ProfileView;

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileView;->getPresenter()Lbike/smarthalo/app/profile/ProfilePresenterContract;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfileView$6;->$innerView:Landroid/view/View;

    sget v1, Lbike/smarthalo/app/R$id;->kilogramsRadioButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const-string v1, "innerView.kilogramsRadioButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lbike/smarthalo/app/profile/ProfilePresenterContract;->onWeightUnitChanged(Z)V

    return-void
.end method
