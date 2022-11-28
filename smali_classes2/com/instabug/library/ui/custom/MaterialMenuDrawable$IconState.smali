.class public final enum Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;
.super Ljava/lang/Enum;
.source "MaterialMenuDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/ui/custom/MaterialMenuDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

.field public static final enum ARROW:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

.field public static final enum BURGER:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

.field public static final enum CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

.field public static final enum X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    const-string v1, "BURGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->BURGER:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    const-string v1, "ARROW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->ARROW:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    const-string v1, "X"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    const-string v1, "CHECK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    const/4 v1, 0x4

    .line 2
    new-array v1, v1, [Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    sget-object v6, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->BURGER:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->ARROW:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->$VALUES:[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->$VALUES:[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    invoke-virtual {v0}, [Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0
.end method
