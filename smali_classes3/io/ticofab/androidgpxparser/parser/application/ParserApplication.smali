.class public Lio/ticofab/androidgpxparser/parser/application/ParserApplication;
.super Landroid/app/Application;
.source "ParserApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 10
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    invoke-static {p0}, Lnet/danlew/android/joda/JodaTimeAndroid;->init(Landroid/content/Context;)V

    return-void
.end method
