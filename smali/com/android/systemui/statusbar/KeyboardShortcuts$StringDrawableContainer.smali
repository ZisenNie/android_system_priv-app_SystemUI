.class final Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringDrawableContainer"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    .line 754
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 752
    return-void
.end method
