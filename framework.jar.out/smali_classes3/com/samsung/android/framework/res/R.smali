.class public final Lcom/samsung/android/framework/res/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/framework/res/R$anim;,
        Lcom/samsung/android/framework/res/R$array;,
        Lcom/samsung/android/framework/res/R$attr;,
        Lcom/samsung/android/framework/res/R$color;,
        Lcom/samsung/android/framework/res/R$dimen;,
        Lcom/samsung/android/framework/res/R$drawable;,
        Lcom/samsung/android/framework/res/R$fraction;,
        Lcom/samsung/android/framework/res/R$id;,
        Lcom/samsung/android/framework/res/R$integer;,
        Lcom/samsung/android/framework/res/R$interpolator;,
        Lcom/samsung/android/framework/res/R$layout;,
        Lcom/samsung/android/framework/res/R$string;,
        Lcom/samsung/android/framework/res/R$style;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onResourcesLoaded(I)V
    .locals 3

    const v2, 0xffffff

    sget v0, Lcom/samsung/android/framework/res/R$anim;->app_starting_exit_for_delaying:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->app_starting_exit_for_delaying:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_bottom:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_left:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_right:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_top:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->example_anim:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->example_anim:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_minimize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_minimize:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_task_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_task_close_exit:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_unminimize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_unminimize:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_wallpaper_open_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_wallpaper_open_exit:I

    sget v0, Lcom/samsung/android/framework/res/R$array;->components_desktop_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->components_desktop_mode:I

    sget v0, Lcom/samsung/android/framework/res/R$array;->components_normal_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->components_normal_mode:I

    sget v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_opposite_launch_app_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_opposite_launch_app_list:I

    sget v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_samsung_home_app_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_samsung_home_app_list:I

    sget v0, Lcom/samsung/android/framework/res/R$array;->config_multiInstanceSupportAppList:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_multiInstanceSupportAppList:I

    sget v0, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    sget v0, Lcom/samsung/android/framework/res/R$color;->decor_button_dark_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->decor_button_dark_color:I

    sget v0, Lcom/samsung/android/framework/res/R$color;->decor_button_light_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->decor_button_light_color:I

    sget v0, Lcom/samsung/android/framework/res/R$color;->dex_dialog_launch_button_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->dex_dialog_launch_button_color:I

    sget v0, Lcom/samsung/android/framework/res/R$color;->dex_dialog_launch_msg_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->dex_dialog_launch_msg_color:I

    sget v0, Lcom/samsung/android/framework/res/R$color;->dex_dialog_launch_title_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->dex_dialog_launch_title_color:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->cocktail_bar_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->cocktail_bar_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_width:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_width:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_button_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_button_text_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_display_error_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_display_error_text_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_launch_button_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_launch_button_margin_top:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_launch_img_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_launch_img_margin_top:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_launch_msg_additional_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_launch_msg_additional_margin_top:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_launch_msg_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_launch_msg_margin_top:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_launch_title_margin:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_launch_title_margin:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_msg_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_msg_text_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_title_text_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_title_text_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_intro_img_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_intro_img_margin_top:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_intro_msg_margin_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_intro_msg_margin_top:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_corner_radius:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_corner_radius:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_icon_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_icon_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_ripple_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_ripple_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_window_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_window_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_divider_guideview_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_divider_guideview_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_longsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_longsize:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_shortsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_shortsize:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width_corner_r:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width_corner_r:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_width:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_guide_window_corner_radius:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_guide_window_corner_radius:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_guide_window_corner_radius_dream:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_guide_window_corner_radius_dream:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_samsung_freeform_decor_caption_window_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_samsung_freeform_decor_caption_window_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_snapview_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_snapview_divider_panel_long:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_long:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_short:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_short:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_long:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_short:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_short:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->navigation_bar_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->navigation_bar_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_icon_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_icon_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_radius:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_radius:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_task_offset_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_task_offset_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_task_offset_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_task_offset_width:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_focused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_focused:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_unfocused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_unfocused:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_dark:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_light:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_dark:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_light:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_dark:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_light:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_dark:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_light:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_focused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_focused:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_unfocused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_unfocused:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_loading_animation_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_loading_animation_list:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_splash_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_splash_image:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_touch_pad_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_touch_pad_image:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_dialog_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_dialog_background:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_dialog_negative_button_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_dialog_negative_button_background:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_dialog_positive_button_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_dialog_positive_button_background:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_intro_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_intro_background:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_00:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_00:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_01:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_01:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_02:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_02:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_03:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_03:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_04:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_04:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_05:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_05:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_06:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_06:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_07:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_07:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_08:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_08:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_09:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_09:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_10:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_10:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_100:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_100:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_101:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_101:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_102:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_102:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_103:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_103:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_104:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_104:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_105:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_105:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_106:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_106:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_107:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_107:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_108:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_108:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_109:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_109:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_11:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_11:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_110:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_110:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_111:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_111:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_112:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_112:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_113:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_113:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_114:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_114:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_115:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_115:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_116:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_116:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_117:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_117:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_118:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_118:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_119:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_119:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_12:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_12:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_120:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_120:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_121:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_121:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_122:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_122:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_123:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_123:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_124:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_124:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_125:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_125:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_126:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_126:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_127:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_127:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_128:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_128:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_129:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_129:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_13:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_13:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_130:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_130:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_131:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_131:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_132:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_132:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_133:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_133:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_134:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_134:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_135:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_135:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_136:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_136:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_137:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_137:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_138:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_138:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_139:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_139:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_14:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_14:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_140:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_140:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_141:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_141:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_142:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_142:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_143:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_143:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_15:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_15:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_16:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_16:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_17:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_17:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_18:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_18:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_19:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_19:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_20:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_20:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_21:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_21:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_22:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_22:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_23:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_23:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_24:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_24:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_25:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_25:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_26:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_26:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_27:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_27:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_28:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_28:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_29:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_29:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_30:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_30:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_31:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_31:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_32:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_32:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_33:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_33:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_34:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_34:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_35:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_35:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_36:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_36:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_37:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_37:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_38:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_38:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_39:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_39:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_40:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_40:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_41:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_41:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_42:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_42:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_43:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_43:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_44:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_44:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_45:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_45:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_46:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_46:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_47:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_47:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_48:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_48:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_49:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_49:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_50:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_50:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_51:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_51:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_52:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_52:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_53:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_53:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_54:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_54:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_55:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_55:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_56:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_56:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_57:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_57:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_58:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_58:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_59:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_59:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_60:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_60:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_61:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_61:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_62:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_62:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_63:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_63:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_64:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_64:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_65:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_65:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_66:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_66:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_67:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_67:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_68:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_68:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_69:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_69:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_70:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_70:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_71:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_71:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_72:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_72:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_73:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_73:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_74:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_74:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_75:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_75:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_76:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_76:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_77:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_77:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_78:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_78:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_79:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_79:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_80:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_80:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_81:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_81:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_82:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_82:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_83:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_83:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_84:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_84:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_85:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_85:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_86:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_86:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_87:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_87:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_88:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_88:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_89:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_89:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_90:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_90:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_91:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_91:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_92:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_92:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_93:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_93:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_94:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_94:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_95:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_95:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_96:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_96:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_97:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_97:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_98:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_98:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_99:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dex_logo_seq_99:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dualscreen_backwindow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dualscreen_backwindow:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_caption_ripple_selector:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_caption_ripple_selector:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_with_padding_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_with_padding_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_with_padding_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_back_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_back_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_close_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_close_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_maximize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_maximize_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_minimize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_minimize_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_reduce_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_reduce_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_rotate_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_rotate_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream_angle270:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream_angle270:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream_angle90:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream_angle90:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_when_docking_dream:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_when_docking_dream:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_touchpad:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_touchpad:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->touchpad_pointer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->touchpad_pointer:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->touchpad_pointer_vertical:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->touchpad_pointer_vertical:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->tw_btn_default_mtrl:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->tw_btn_default_mtrl:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->tw_btn_dex_mtrl:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->tw_btn_dex_mtrl:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->tw_image_welcome_dex_monitor:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->tw_image_welcome_dex_monitor:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->tw_img_launcher_flow_dock:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->tw_img_launcher_flow_dock:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->tw_img_welcome_dex:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->tw_img_welcome_dex:I

    sget v0, Lcom/samsung/android/framework/res/R$fraction;->dex_dialog_button_fraction:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$fraction;->dex_dialog_button_fraction:I

    sget v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_img_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_img_height:I

    sget v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_img_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_img_width:I

    sget v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_layout_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_layout_height:I

    sget v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_layout_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_layout_width:I

    sget v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_msg_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_msg_size:I

    sget v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_title_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_title_size:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->back_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->back_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->caption:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->caption:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->caption_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->caption_container:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->caption_end_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->caption_end_container:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->close_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->close_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->container:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->dex_dialog_launch_button_negative:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->dex_dialog_launch_button_negative:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->dex_dialog_launch_button_positive:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->dex_dialog_launch_button_positive:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->display_chooser_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->display_chooser_grid:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->ghost_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->ghost_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->icon:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->intro_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->intro_image:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->intro_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->intro_layout:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->intro_msg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->intro_msg:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->intro_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->intro_title:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->learn_more:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->learn_more:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->maximize_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->maximize_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->minimize_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->minimize_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->promotion_msg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->promotion_msg:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->reduce_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->reduce_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->root_layout:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->root_layout:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->rotate_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->rotate_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->text1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->text1:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->text2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->text2:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->text_activity_name:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->text_activity_name:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->text_display_label:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->text_display_label:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->title:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->touchpad_landscape:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->touchpad_landscape:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->touchpad_portrait:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->touchpad_portrait:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->wallpaper_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->wallpaper_background:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_dockedStackDividerSnapMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_dockedStackDividerSnapMode:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_longDeviceSnapMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_longDeviceSnapMode:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->mw_example_integer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->mw_example_integer:I

    sget v0, Lcom/samsung/android/framework/res/R$interpolator;->deceleration:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$interpolator;->deceleration:I

    sget v0, Lcom/samsung/android/framework/res/R$interpolator;->sine_in_out_70:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$interpolator;->sine_in_out_70:I

    sget v0, Lcom/samsung/android/framework/res/R$interpolator;->sine_in_out_90:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$interpolator;->sine_in_out_90:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption_desktop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption_desktop:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_black_screen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_black_screen:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_dialog_launch_confirm:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_dialog_launch_confirm:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_dialog_touchpad:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_dialog_touchpad:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_intro:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_intro:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen_internal:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen_internal:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_promotion:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_promotion:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_touch_pad:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_touch_pad:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_grid:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_list_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_list_item:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->back_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->back_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->close_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->close_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_display_unsupport:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_display_unsupport:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_display_unsupport_msg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_display_unsupport_msg:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_display_unsupport_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_display_unsupport_title:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install_positive:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install_positive:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_msg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_msg:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_msg_additional:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_msg_additional:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_negative:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_negative:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_positive:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_positive:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_title:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_toast:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_toast:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_learn_more:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_learn_more:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion_msg1:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion_msg1:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion_msg2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion_msg2:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion_msg2_mouse:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion_msg2_mouse:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_hun_hdmi_settings:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_hun_hdmi_settings:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_intro_msg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_intro_msg:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_intro_msg_additional:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_intro_msg_additional:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_intro_samsung_dex:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_intro_samsung_dex:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_intro_welcome_to:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_intro_welcome_to:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dex_action:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dex_action:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dex_content:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dex_content:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dex_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dex_title:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dismissed_action:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dismissed_action:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dismissed_content:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dismissed_content:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_mirroring_action:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_mirroring_action:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_mirroring_content:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_mirroring_content:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_mirroring_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_mirroring_title:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_tablet_touchpad_description:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_tablet_touchpad_description:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_emergency:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_emergency:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_keyboard_cover:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_keyboard_cover:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_led_view_cover:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_led_view_cover:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_low_memory_warning:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_low_memory_warning:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_max_power_saving:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_max_power_saving:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_mid_power_saving:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_mid_power_saving:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_safe_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_safe_mode:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_scover:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_scover:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_unable_launch:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_unable_launch:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_unavailable_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_unavailable_mode:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_description:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_description:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_doubletap:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_doubletap:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_doubletap_desc:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_doubletap_desc:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_doubletapdrag:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_doubletapdrag:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_doubletapdrag_desc:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_doubletapdrag_desc:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_gestures:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_gestures:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_pinch:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_pinch:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_pinch_desc:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_pinch_desc:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_swipe:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_swipe:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_swipe_desc:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_swipe_desc:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_tap:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_tap:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_tap2:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_tap2:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_tap2_desc:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_tap2_desc:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_tap_desc:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_tap_desc:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_notice_popup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_notice_popup:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->freeform_max_count_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->freeform_max_count_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->ghost_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->ghost_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->maximize_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->maximize_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->minimize_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->minimize_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->multi_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->multi_window:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_open:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_open:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_doesnt_support_multiwindow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_doesnt_support_multiwindow:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_for_phone_home_screen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_for_phone_home_screen:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_for_phone_touch_screen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_for_phone_touch_screen:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->multiwindow_forced_resizable_samsung_dex_for_game:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->multiwindow_forced_resizable_samsung_dex_for_game:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->mw_example_string:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->mw_example_string:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->reduce_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->reduce_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->rotate_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->rotate_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->samsung_dex:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->samsung_dex:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->toast_remove_keyboard:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->toast_remove_keyboard:I

    sget v0, Lcom/samsung/android/framework/res/R$style;->DefaultPopupStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$style;->DefaultPopupStyle:I

    sget v0, Lcom/samsung/android/framework/res/R$style;->RobotoCondensedRegularFontStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$style;->RobotoCondensedRegularFontStyle:I

    sget v0, Lcom/samsung/android/framework/res/R$style;->RobotoRegularFontStyle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$style;->RobotoRegularFontStyle:I

    sget v0, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    return-void
.end method
