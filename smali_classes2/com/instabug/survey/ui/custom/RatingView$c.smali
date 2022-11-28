.class Lcom/instabug/survey/ui/custom/RatingView$c;
.super Landroid/view/View$BaseSavedState;
.source "RatingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/survey/ui/custom/RatingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/instabug/survey/ui/custom/RatingView$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/survey/ui/custom/RatingView$c$a;

    invoke-direct {v0}, Lcom/instabug/survey/ui/custom/RatingView$c$a;-><init>()V

    sput-object v0, Lcom/instabug/survey/ui/custom/RatingView$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/instabug/survey/ui/custom/RatingView$c;->a:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView$c;->a:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView$c;->a:F

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/ui/custom/RatingView$c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/survey/ui/custom/RatingView$c;->a:F

    return p0
.end method

.method static synthetic a(Lcom/instabug/survey/ui/custom/RatingView$c;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/survey/ui/custom/RatingView$c;->a:F

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/instabug/survey/ui/custom/RatingView$c;->a:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
