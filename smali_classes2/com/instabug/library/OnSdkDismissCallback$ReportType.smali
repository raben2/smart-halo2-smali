.class public final enum Lcom/instabug/library/OnSdkDismissCallback$ReportType;
.super Ljava/lang/Enum;
.source "OnSdkDismissCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/OnSdkDismissCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/OnSdkDismissCallback$ReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/OnSdkDismissCallback$ReportType;

.field public static final enum BUG:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

.field public static final enum FEEDBACK:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

.field public static final enum OTHER:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

.field public static final enum QUESTION:Lcom/instabug/library/OnSdkDismissCallback$ReportType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    const-string v1, "BUG"

    const-string v2, "bug"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/library/OnSdkDismissCallback$ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->BUG:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    new-instance v0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    const-string v1, "FEEDBACK"

    const-string v2, "feedback"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/instabug/library/OnSdkDismissCallback$ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->FEEDBACK:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    new-instance v0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    const-string v1, "QUESTION"

    const-string v2, "question"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/instabug/library/OnSdkDismissCallback$ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->QUESTION:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    new-instance v0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    const-string v1, "OTHER"

    const-string v2, "other"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/instabug/library/OnSdkDismissCallback$ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->OTHER:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    const/4 v1, 0x4

    .line 2
    new-array v1, v1, [Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    sget-object v2, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->BUG:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->FEEDBACK:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->QUESTION:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->$VALUES:[Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/OnSdkDismissCallback$ReportType;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/OnSdkDismissCallback$ReportType;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->$VALUES:[Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    invoke-virtual {v0}, [Lcom/instabug/library/OnSdkDismissCallback$ReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->name:Ljava/lang/String;

    return-object v0
.end method
