.class final enum Lcom/instabug/bug/view/reporting/c$h;
.super Ljava/lang/Enum;
.source "BaseReportingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/bug/view/reporting/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/bug/view/reporting/c$h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/bug/view/reporting/c$h;

.field public static final enum NONE:Lcom/instabug/bug/view/reporting/c$h;

.field public static final enum RECORD_VIDEO:Lcom/instabug/bug/view/reporting/c$h;

.field public static final enum SEND_BUG:Lcom/instabug/bug/view/reporting/c$h;

.field public static final enum TAKE_EXTRA_SCREENSHOT:Lcom/instabug/bug/view/reporting/c$h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/instabug/bug/view/reporting/c$h;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/bug/view/reporting/c$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/view/reporting/c$h;->NONE:Lcom/instabug/bug/view/reporting/c$h;

    new-instance v0, Lcom/instabug/bug/view/reporting/c$h;

    const-string v1, "SEND_BUG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/bug/view/reporting/c$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/view/reporting/c$h;->SEND_BUG:Lcom/instabug/bug/view/reporting/c$h;

    new-instance v0, Lcom/instabug/bug/view/reporting/c$h;

    const-string v1, "TAKE_EXTRA_SCREENSHOT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/bug/view/reporting/c$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/view/reporting/c$h;->TAKE_EXTRA_SCREENSHOT:Lcom/instabug/bug/view/reporting/c$h;

    new-instance v0, Lcom/instabug/bug/view/reporting/c$h;

    const-string v1, "RECORD_VIDEO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/bug/view/reporting/c$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/view/reporting/c$h;->RECORD_VIDEO:Lcom/instabug/bug/view/reporting/c$h;

    const/4 v1, 0x4

    .line 2
    new-array v1, v1, [Lcom/instabug/bug/view/reporting/c$h;

    sget-object v6, Lcom/instabug/bug/view/reporting/c$h;->NONE:Lcom/instabug/bug/view/reporting/c$h;

    aput-object v6, v1, v2

    sget-object v2, Lcom/instabug/bug/view/reporting/c$h;->SEND_BUG:Lcom/instabug/bug/view/reporting/c$h;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/bug/view/reporting/c$h;->TAKE_EXTRA_SCREENSHOT:Lcom/instabug/bug/view/reporting/c$h;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/instabug/bug/view/reporting/c$h;->$VALUES:[Lcom/instabug/bug/view/reporting/c$h;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/bug/view/reporting/c$h;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/bug/view/reporting/c$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/bug/view/reporting/c$h;

    return-object p0
.end method

.method public static values()[Lcom/instabug/bug/view/reporting/c$h;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/view/reporting/c$h;->$VALUES:[Lcom/instabug/bug/view/reporting/c$h;

    invoke-virtual {v0}, [Lcom/instabug/bug/view/reporting/c$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/bug/view/reporting/c$h;

    return-object v0
.end method
