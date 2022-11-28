.class public final Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants$Companion;
.super Ljava/lang/Object;
.source "AuthenticationConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants$Companion;",
        "",
        "()V",
        "MINIMUM_AGE_FOR_USER",
        "",
        "getMINIMUM_AGE_FOR_USER",
        "()I",
        "MINIMUM_PASSWORD_LENGTH",
        "getMINIMUM_PASSWORD_LENGTH",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMINIMUM_AGE_FOR_USER()I
    .locals 1

    .line 10
    invoke-static {}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants;->access$getMINIMUM_AGE_FOR_USER$cp()I

    move-result v0

    return v0
.end method

.method public final getMINIMUM_PASSWORD_LENGTH()I
    .locals 1

    .line 9
    invoke-static {}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationConstants;->access$getMINIMUM_PASSWORD_LENGTH$cp()I

    move-result v0

    return v0
.end method
