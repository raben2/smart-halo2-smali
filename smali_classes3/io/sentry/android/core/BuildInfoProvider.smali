.class public final Lio/sentry/android/core/BuildInfoProvider;
.super Ljava/lang/Object;
.source "BuildInfoProvider.java"

# interfaces
.implements Lio/sentry/android/core/IBuildInfoProvider;


# annotations
.annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuildTags()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 23
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkInfoVersion()I
    .locals 1

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
