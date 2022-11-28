.class public final enum Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;
.super Ljava/lang/Enum;
.source "OnSdkDismissedCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

.field public static final enum ADD_ATTACHMENT:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

.field public static final enum CANCEL:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

.field public static final enum SUBMIT:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    const-string v1, "SUBMIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->SUBMIT:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    .line 5
    new-instance v0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    const-string v1, "CANCEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->CANCEL:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    .line 10
    new-instance v0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    const-string v1, "ADD_ATTACHMENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->ADD_ATTACHMENT:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    const/4 v1, 0x3

    .line 11
    new-array v1, v1, [Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    sget-object v5, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->SUBMIT:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->CANCEL:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->$VALUES:[Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    return-object p0
.end method

.method public static values()[Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->$VALUES:[Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    invoke-virtual {v0}, [Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    return-object v0
.end method
