.class public final enum Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;
.super Ljava/lang/Enum;
.source "IbFrRippleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

.field public static final enum DOUBLE:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

.field public static final enum RECTANGLE:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

.field public static final enum SIMPLE:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    const-string v1, "SIMPLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;->SIMPLE:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    .line 2
    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    const-string v1, "DOUBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;->DOUBLE:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    .line 3
    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    const-string v1, "RECTANGLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;->RECTANGLE:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    sget-object v5, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;->SIMPLE:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    aput-object v5, v1, v2

    sget-object v2, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;->DOUBLE:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;->$VALUES:[Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    return-object p0
.end method

.method public static values()[Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;->$VALUES:[Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    invoke-virtual {v0}, [Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$d;

    return-object v0
.end method
